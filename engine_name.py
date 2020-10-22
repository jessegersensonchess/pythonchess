// DESCRIPTION: starts engine binary, reads uci name and outputs the name to stdout 
// INPUT: [/path/to/engine] (string)
// OUTPUT: [engine_name] (string)

import chess
import chess.engine
import sys

theengine=sys.argv[1]
engine = chess.engine.SimpleEngine.popen_uci(theengine)
print(engine.id['name'])
engine.quit()
