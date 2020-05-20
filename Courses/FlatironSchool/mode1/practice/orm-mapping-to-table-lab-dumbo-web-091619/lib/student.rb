class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_accessor :name, :grade
  attr_reader :id
  @@all = []

  def initialize(id=nil, name, grade)
    @id = id
    @name = name
    @grade = grade
    @@all << self
  end

  def self.create_table
    querry = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER
      )
      SQL

      DB[:conn].execute(querry)
  end

  def self.drop_table
    querry = <<-SQL
    DROP TABLE students
    SQL
    DB[:conn].execute(querry)
  end

  def save
      querry = <<-SQL
        INSERT INTO students (name, grade)
        VALUES (?, ?)
      SQL

      DB[:conn].execute(querry, self.name, self.grade)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
  end

  def self.create(student)
   name, grade = student[:name], student[:grade]
   student = Student.new(name, grade)
   student.save
   student
  end


end
