MODULE init;
IMPORT Strings, error, opts, model;
  CONST
    odzRootDirName      = ".odz";
    odzCommitDirPath    = ".odz/commit";
    odzCheckoutDirPath  = ".odz/checkout";
    odzStatusFilePath   = ".odz/statux.txt";
    odzStagingFilePath  = ".odz/staging-area.txt";
    odzTimeFormat       = "2006-01-02 03:04:05";
    odzCommitMetadataFileName = "metadata.txt";
  VAR
    statusFilePath, stagingAreaFilePath: model.string;
    
  PROCEDURE init*();
  BEGIN
    rootCmd.AddCommand(initCmd)
  END init;


BEGIN
  statusFilePath := Strings.Append("/status.txt", odzRootDirName);
  stagingAreaFilePath := Strings.Append("/staging-area.txt", odzRootDirName);

END init.
