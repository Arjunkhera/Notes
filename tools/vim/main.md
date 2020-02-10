# VIM


[Random Text](randomText)

- [Some general advice on vim](general.md)
- [Vundle](vundle.md)


1. Plugin manager 
   
   I prefer to use Vundle, as it provides most of the facilities. 
   Check [this](https://www.reddit.com/r/vim/comments/49uag0/vundle_vs_pathogen_vs/)
   
   An important point to note : Pathogen is not, technically, a plugin manager. It's sole purpose is to add specific user-defined directories to the runtimepath option used by Vim to know where to look for scripts. Any "plugin management" is entirely left to the user.
   Vundle, neobundle, VAM, plug… are all actual "plugin managers" because they give you the ability to find/install/remove/update plugins all from within Vim.
   So, if some plugin reads install using Pathogen, it means you can install using Vundle also. 
   Here is another take on the [vim and pathogen](https://stackoverflow.com/questions/29971431/how-to-use-pathogen-and-vundle-at-the-same-time-with-vim)
