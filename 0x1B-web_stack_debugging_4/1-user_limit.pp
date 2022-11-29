#Enable the user holberton to login and open file without errors

# Increase hard file limit for holberton user
exec { 'increase-hard-file-for-holberton-user':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limit.conf'
  path    => '/usr/local/bin/:/bin/'
}

#Increase soft file limit for user holberton
exec { 'increase-soft-file-limit-for-holberton-user':
  command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf'
  path    => '/usr/local/bin/:/bin/'
}
