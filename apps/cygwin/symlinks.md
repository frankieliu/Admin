[cygwin](https://gist.github.com/karlding/7868aac0c54fe94b7ba0a2061e0a4939?permalink_comment_id=3460078)

How to create window native links with cygwin

1. Add user to SeCreateSymbolicLinkPrivilege
   1. secedit /export /cfg c:\secpol.cfg
   2. Notepad this file and add frankieliu to 
      1.  SeCreateSymbolicLinkPrivilege = *S-1-5-32-544,frankieliu
   3. Save the file
   4. secedit /configure /db C:\Windows\security\local.sdb /cfg C:\secpol.cfg /areas USER_RIGHTS
   5. logout and log back in
1. Add export CYGWIN=winsymlinks:nativestrict to .bash_profile or .bashrc

# Test
$ CYGWIN=winsymlinks:nativestrict ln -s tmp tmp1