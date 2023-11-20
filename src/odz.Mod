MODULE odz;
IMPORT Out, opts;

PROCEDURE initOptions;
VAR
  options: opts.Options;
 foptions: opts.Options;
 opt, fopt: opts.Option;
BEGIN
  options := opts.createOptions();
  foptions := opts.createOptions();

  opt := opts.createOpt();
  opts.setOptName(opt, "i");
  opts.setOptLName(opt, "init");
  opts.setOptHasVal(opt, FALSE);
  opts.setOptDesc(opt, "initialize repository");
  opts.setOptRequired(opt, FALSE);
  options.add(options, opt);

  opt := opts.createOpt();
  opts.setOptName(opt, "a");
  opts.setOptLName(opt, "add");
  opts.setOptHasVal(opt, TRUE);
  opts.setOptDesc(opt, "add file to the repository");
  opts.setOptRequired(opt, FALSE);
  options.add(options, opt);


END initOptions;

PROCEDURE main;
BEGIN
  initOptions;
END main;


BEGIN
  main;

END odz.
