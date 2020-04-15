#!/bin/bash

# AUTHOR      : {{name}}
# DATE        : {{5-Nov-1605}}
# PURPOSE     : {{automate XYZ}}
#
# {{remember remember 5th november the gunpowder treason and plot}}


robot \
    # --dryrun \
    # --include test-structure \
    # --exclude homepage \
    --rpa \
    --name "Tasks" \
    # --suite BlessLikes \
    --outputdir output \
    --debugfile debugfile.log \
    --variablefile {{fileName}} \
    --variable {{if:any}} \
    tasks

# END
