#include <stdio.h>
#include <cs50.h>

int main(void)
{
    bool valid = false;

    while (!valid)
        {
        int height = get_int("Enter the Height?\n");
        printf("Height is: %d\n", height);
        if (height >= 0 && height <= 8)
            {
                valid = true;
                string hash = "#";
                string dot = ".";

                for (int i = 1; i < height; i++)
                    {
                        for (int k = height - 1; k > i; k--)
                            {
                                printf("%s", dot);
                            }

                        for (int j = 0; j + 1 < i; j++)
                            {
                                printf("%s", hash);
                            }
                        printf("%s\n", hash);
                    }

            }
        }
}