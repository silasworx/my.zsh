
local MY_SETTINGS_NAME="My Settings"

# Default Parameters

# my PARAMETERS for my Caller
local OBJECT="${1}"
# noun | Object (A thing) | Like: "App"

# Folder name located in "~/my/". example: "~/my/App"
# example: The path: "~/my/App"... Hold scripts that will only manipulate files & folders located in "${MY_ZSH_ROOT_PATH}/Host/Apps/*"

local OBJECT_METHOD="${2}"
# verb | an Action we'll take on the OBJECT | Like: "Create"
# Files that holds the action script specified in the variable

# : Add | Adding to the OBJECT
# : Edit | Editing the OBJECT
# : Remove | Removing the OBJECT

local TEMPLATE="${3}"
# Procedure Template | Template file with a set of steps to help define our Procedure to "OBJECT_METHOD ( take Action )" Something to the "OBJECT ( an Object )"
# my OBJECT OBJECT_METHOD METHOD

# Options
# : DEFAULT | PROMPT an OPTION key, the run an AUTO script.
# : AUTO | For an install script, we might want to use my App Add AUTO
# : PROMPT | For a config script. we might want to use my App Edit PROMPT
# : BLANK | For custom scripts

# biggest method here is to PIPE things

# settings will hold Parameters for Everything from "App" to ""


# My Paths #############################################

local MY="My"
local MY_PATH="${MY_ZSH}/_${MY:l}"
local MY_PATH_FULL=${MY_ZSH_ROOT_PATH}/_${MY:l}

# My Objects Paths #############################################

# my_objects
local MY_OBJECTS="Objects"
local MY_OBJECTS_PATH="${MY_PATH}/${(C)MY_OBJECTS}"
local MY_OBJECTS_PATH_FULL=${MY_PATH_FULL}/${(C)MY_OBJECTS}

# my_object
local MY_OBJECT="${(C)OBJECT}"
local MY_OBJECT_PATH="${MY_OBJECTS_PATH}/${(C)MY_OBJECT}"
local MY_OBJECT_PATH_FULL=${MY_OBJECTS_PATH_FULL}/${(C)MY_OBJECT}

# my_action
local MY_OBJECT_METHOD="${(C)OBJECT_METHOD}"
local MY_OBJECT_METHOD_PATH="${MY_OBJECT_PATH}/${MY_OBJECT_METHOD}.zsh"
local MY_OBJECT_METHOD_PATH_FULL=${MY_OBJECT_PATH_FULL}/${OBJECT_METHOD}.zsh


# Current Path #############################################

# __current
local MY_CURRENT_TASK=${MY_ZSH_ROOT_PATH}/__current

# My Control Paths #############################################

# my_current
local MY_CURRENT="Current"
local MY_CURRENT_PATH="${MY_ZSH}/__${MY_CURRENT:l}"
local MY_CURRENT_PATH_FULL=${MY_ZSH_ROOT_PATH}/__${MY_CURRENT:l}

# my_common
local MY_COMMON="Common"
local MY_COMMON_PATH="${MY_PATH}/_${MY_COMMON:l}"
local MY_COMMON_PATH_FULL=${MY_ZSH_ROOT_PATH}/_my/_${MY_COMMON:l}

# my_common_write
local MY_COMMON_WRITE_NAME="Write"
local MY_COMMON_WRITE_PATH="${MY_COMMON_PATH}/${(C)MY_COMMON_WRITE_NAME}.zsh"
local MY_COMMON_WRITE_PATH_FULL=${MY_COMMON_PATH_FULL}/${(C)MY_COMMON_WRITE_NAME}.zsh

# my_init
local MY_INIT="Init"
local MY_INIT_PATH="${MY_PATH}/${MY_INIT}"
local MY_INIT_PATH_FULL=${MY_PATH_FULL}/${MY_INIT}

# my_creator
local MY_INIT_CREATOR="Creator"
local MY_INIT_CREATOR_PATH=${MY_INIT_PATH}/${(C)MY_INIT_CREATOR}.zsh
local MY_INIT_CREATOR_PATH_FULL=${MY_INIT_PATH_FULL}/${(C)MY_INIT_CREATOR}.zsh

# my_loader
local MY_INIT_LOADER="Loader"
local MY_INIT_LOADER_PATH="${MY_INIT_PATH}/${(C)MY_INIT_LOADER}.zsh"
local MY_INIT_LOADER_PATH_FULL=${MY_INIT_PATH_FULL}/${(C)MY_INIT_LOADER}.zsh

# my_runner
local MY_INIT_RUNNER="Runner"
local MY_INIT_RUNNER_PATH="${MY_INIT_PATH}/${(C)MY_INIT_RUNNER}.zsh"
local MY_INIT_RUNNER_PATH_FULL=${MY_INIT_PATH_FULL}/${(C)MY_INIT_RUNNER}.zsh

# my_method
local MY_METHOD="Method"
local MY_METHOD_PATH="${MY}/${(C)MY_METHOD}"
local MY_METHOD_PATH_FULL=${MY_PATH_FULL}/${(C)MY_METHOD}

# my_method_close
local MY_METHOD_CLOSE="Close"
local MY_METHOD_CLOSE_PATH=${MY_METHOD_PATH}/${(C)MY_METHOD_CLOSE}.zsh
local MY_METHOD_CLOSE_PATH_FULL=${MY_METHOD_PATH_FULL}/${(C)MY_METHOD_CLOSE}.zsh

# my_method_create
local MY_METHOD_CREATE="Create"
local MY_METHOD_CREATE_PATH=${MY_METHOD_PATH}/${(C)MY_METHOD_CREATE}.zsh
local MY_METHOD_CREATE_PATH_FULL=${MY_METHOD_PATH_FULL}/${(C)MY_METHOD_CREATE}.zsh

# my_method_remove
local MY_METHOD_REMOVE="Remove"
local MY_METHOD_REMOVE_PATH=${MY_METHOD_PATH}/${(C)MY_METHOD_REMOVE}.zsh
local MY_METHOD_REMOVE_PATH_FULL=${MY_METHOD_PATH_FULL}/${(C)MY_METHOD_REMOVE}.zsh

# my_method_start
local MY_METHOD_START="Start"
local MY_METHOD_START_PATH=${MY_METHOD_PATH}/${(C)MY_METHOD_START}.zsh
local MY_METHOD_START_PATH_FULL=${MY_METHOD_PATH_FULL}/${(C)MY_METHOD_START}.zsh

# my_method_update
local MY_METHOD_UPDATE="Update"
local MY_METHOD_UPDATE_PATH=${MY_METHOD_PATH}/${(C)MY_METHOD_UPDATE}.zsh
local MY_METHOD_UPDATE_PATH_FULL=${MY_METHOD_PATH_FULL}/${(C)MY_METHOD_UPDATE}.zsh

# my Template
local MY_TEMPLATE="Template"
local MY_TEMPLATE_FILE="${TEMPLATE}.zsh"
local MY_TEMPLATE_FILE_PATH="${MY_PATH}/${MY_TEMPLATE}/${(C)MY_TEMPLATE}.zsh"
local MY_TEMPLATE_FILE_PATH_FULL=${MY_PATH_FULL}/${MY_TEMPLATE}/${(C)MY_TEMPLATE}.zsh


# My Temp Paths #############################################

# my_temp
local MY_TEMP="Temp"
local MY_TEMP_PATH="${MY_ZSH}/_my_${MY_TEMP:l}"
local MY_TEMP_PATH_FULL=${MY_ZSH_ROOT_PATH}/_my_${MY_TEMP:l}

# my_backup
local MY_BACKUP="Backup"
local MY_BACKUP_PATH="${MY_TEMP_PATH}/${(C)MY_BACKUP}"
local MY_BACKUP_PATH_FULL=${MY_TEMP_PATH_FULL}/${(C)MY_BACKUP}

# my history
local MY_HISTORY="History"
local MY_HISTORY_PATH="${MY_TEMP_PATH}/${(C)MY_HISTORY}"
local MY_HISTORY_PATH_FULL=${MY_TEMP_PATH_FULL}/${(C)MY_HISTORY}

# Here "Add" means an "Add" Object
# example : my Add ( Adding to "${MY_ZSH_ROOT_PATH}/my" not Adding to "${MY_ZSH_ROOT_PATH}/Host/Apps")
# local MY_OBJECT_METHOD="${MY_OBJECT_METHODS}/${(C)OBJECT}"
# local MY_OBJECT_METHOD_PATH_FULL="${MY_OBJECT_METHODS_PATH_FULL}/${(C)OBJECT}"
#
# # my Object
# local MY_OBJECT="~/my/${(C)OBJECT}"
# local MY_OBJECT_PATH_FULL="${MY_PATH_FULL}/${(C)OBJECT}"
#
# # my Object Do
# local MY_OBJECT_OBJECT_METHOD="${MY_OBJECT}/${(C)OBJECT_METHOD}"
# local MY_OBJECT_OBJECT_METHOD_PATH_FULL="${MY_OBJECT_PATH_FULL}/${(C)OBJECT_METHOD}"
#
# local OBJECT_PATH_FULL=${MY_OBJECT_PATH_FULL}
# local OBJECT_METHOD_PATH_FULL=${MY_OBJECT_OBJECT_METHOD_PATH_FULL}
