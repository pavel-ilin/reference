const dfs = (graph, root, target) => {

    if (target > graph.length || root > graph.length){
      return 'Input is outside the matrix'
    }
  
    let stack = [],
        visited = [],
        node;
  
    stack.push(root);
  
    while (stack.length > 0) {
      node = stack[stack.length - 1];
      visited.push(node);
      let foundNodes = false;
  
      for (let i = 0; i < graph.length; i++) {
        if (graph[node][i] === 1) {
          if (i === target) {
            visited.push(i);
  
            return {
              visited: visited,
              root: root,
              target: target
            }
  
          } else {
            if (!visited.includes(i) && !stack.includes(i)) {
                foundNodes = true;
                stack.push(i);
                break;
            }
          }
        }
      }
      if (!foundNodes)
        stack.pop();
    }
  };
  
  var graph = [
    [0, 1, 0, 1, 0],
    [0, 0, 1, 0, 0],
    [0, 0, 1, 1, 0],
    [1, 0, 0, 0, 1],
    [0, 0, 0, 0, 0]
  ];
  
  dfs(graph, 2, 4);