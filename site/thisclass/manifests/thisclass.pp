class thisclass {
 # Create a define type, that will take $name as the file
 # You provide $src for each file
 define mydefine ($src) {
   file { $name :
     ensure => present,
     source => "puppet:///modules/<mymodule>/$src",
   }
  }

  # Use two arrarys, one for file names and other for source
  $filearray=["/path/to/file1","/path/to/file2"]
  $filesrc=["source1","source2"]

  # Loop over the array
  each($filearray) | $index, $value | {
   mydefine{ $value :
      src => $filesrc[$index],
    }
 }
