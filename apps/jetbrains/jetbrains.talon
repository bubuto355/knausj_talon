# Requires https://plugins.jetbrains.com/plugin/10504-voice-code-idea
app: /jetbrains/
app: IntelliJ IDEA
app: idea64.exe
app: PyCharm
app: PyCharm64.exe
app: pycharm64.exe
app: webstorm64.exe
-
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.splits 
tag(): user.tabs

#talon app actions (+custom tab actions)
action(user.tab_final): user.idea("action GoToLastTab")
action(app.tab_next): user.idea("action NextTab")
action(app.tab_previous): user.idea("action PreviousTab")
action(app.tab_close): user.idea("action CloseActiveTab")

#talon code actions
action(code.toggle_comment): user.idea("action CommentByLineComment")

#talon edit actions
action(edit.find_next): user.idea("action FindNext")
action(edit.find_previous): user.idea("action FindPrevious")
action(edit.find): user.idea("action Find")
action(edit.line_clone):  user.idea("action EditorDuplicate")
action(edit.line_swap_down):  user.idea("action MoveLineDown")
action(edit.line_swap_up):  user.idea("action MoveLineUp")

# splits.py support begin
action(user.split_clear_all): user.idea("action UnsplitAll")
action(user.split_clear): user.idea("action Unsplit")
action(user.split_flip): user.idea("action ChangeSplitOrientation")
action(user.split_last): user.idea("action LastSplitter")
action(user.split_next): user.idea("action NextSplitter")
action(user.split_window_down): user.idea("action MoveTabDown")
action(user.split_window_horizontally): user.idea("action SplitHorizontally")
#action(user.split_window_left): user.idea("action MoveTabLeft")
action(user.split_window_right): user.idea("action MoveTabRight")
#action(user.split_window_up): user.idea("action MoveTabUp")
action(user.split_window_vertically): user.idea("action SplitVertically")
action(user.split_window): user.idea("action EditSourceInNewWindow")
# splits.py support end

# multiple_cursors.py support begin
action(user.multi_cursor_add_above): user.idea("action EditorCloneCaretAbove")
action(user.multi_cursor_add_below): user.idea("action EditorCloneCaretBelow")
action(user.multi_cursor_disable): key(escape)
action(user.multi_cursor_enable): key(shift-alt-insert)
action(user.multi_cursor_select_all_occurrences): user.idea("action SelectAllOccurrences")
action(user.multi_cursor_select_fewer_occurrences): user.idea("action UnselectPreviousOccurrence")
action(user.multi_cursor_select_more_occurrences): user.idea("action SelectNextOccurrence")
# multiple_cursors.py support end

# Auto complete
complete: user.idea("action CodeCompletion")
perfect: user.idea("action CodeCompletion,action CodeCompletion")
smart: user.idea("action SmartTypeCompletion")
(done | finish):  user.idea("action EditorCompleteStatement")
# Copying
grab <number>: user.idea_grab(number)
# Actions
(action | please): user.idea("action GotoAction")
(action | please) <user.text>:
  user.idea("action GotoAction")
  insert(text)
extend <number>: user.extend_action(number)
# Refactoring
refactor: user.idea("action Refactorings.QuickListPopupAction")
refactor <user.text>:
  user.idea("action Refactorings.QuickListPopupAction")
  insert(text)
extract variable: user.idea("action IntroduceVariable")
extract field: user.idea("action IntroduceField")
extract constant: user.idea("action IntroduceConstant")
extract parameter: user.idea("action IntroduceParameter")
extract interface: user.idea("action ExtractInterface")
extract method: user.idea("action ExtractMethod")
refactor in line: user.idea("action Inline")
refactor move: user.idea("action Move")
refactor rename: user.idea("action RenameElement")
rename file: user.idea("action RenameFile")
fix (format | formatting): user.idea("action ReformatCode")
fix imports: user.idea("action OptimizeImports")
#navigation
(go declaration | follow): user.idea("action GotoDeclaration")
go implementation: user.idea("action GotoImplementation")
go usage: user.idea("action FindUsages")
go type: user.idea("action GotoTypeDeclaration")
go test: user.idea("action GotoTest")
go back: user.idea("action Back")
go forward: user.idea("action Forward")
# Search
find (everywhere | all): user.idea("action SearchEverywhere")
find (everywhere | all) <user.text> [over]:
  user.idea("action SearchEverywhere")
  sleep(500ms)
  insert(text)
(search | find) class: user.idea("action GotoClass")
(search | find) file: user.idea("action GotoFile")
(search | find) path: user.idea("action FindInPath")
recent: user.idea("action RecentFiles")

surround [this] with <user.text> [over]:
    idea("action SurroundWith")
    sleep(500ms)
    insert(text)
# Making these longer to reduce collisions with real code dictation.
insert generated <user.text> [over]:
    user.idea("action Generate")
    sleep(500ms)
    insert(text)
insert template <user.text> [over]:
    idea("action InsertLiveTemplate")
    sleep(500ms)
    insert(text)
create (template|snippet): user.idea("action SaveAsTemplate")
# Recording
toggle recording: user.idea("action StartStopMacroRecording")
change (recording | recordings): user.idea("action EditMacros")
play recording: user.idea("action PlaybackLastMacro")
play recording <user.text> [over]:
    idea("action PlaySavedMacrosAction")
    insert(text)
    sleep(500ms)
    Key("enter")
# Marks
go mark: user.idea("action ShowBookmarks")
toggle mark: user.idea("action ToggleBookmark")
go next mark: user.idea("action GotoNextBookmark")
go last mark: user.idea("action GotoPreviousBookmark")
toggle mark <number>: user.idea("action ToggleBookmark{number}")
go mark <number>: user.idea("action GotoBookmark{number}")
# Folding
expand deep: user.idea("action ExpandRegionRecursively")
expand all: user.idea("action ExpandAllRegions")
collapse deep: user.idea("action CollapseRegionRecursively")
collapse all: user.idea("action CollapseAllRegions")
# miscellaneous
# XXX These might be better than the structural ones depending on language.
go next (method | function): user.idea("action MethodDown")
go last (method | function): user.idea("action MethodUp")
# Clipboard
clippings: user.idea("action PasteMultiple")
copy path: user.idea("action CopyPaths")
copy reference: user.idea("action CopyReference")
copy pretty: user.idea("action CopyAsRichText")
# File Creation
create sibling: user.idea("action NewElementSamePlace")
create sibling <user.text> [over]:
    user.idea("action NewElementSamePlace")
    sleep(500ms)
    insert(text)
create file: user.idea("action NewElement")
create file <user.text> [over]:
  user.idea("action NewElement")
  sleep(500ms)
  insert(text)
# Task Management
go task: user.idea("action tasks.goto")
go browser task: user.idea("action tasks.open.in.browser")
switch task: user.idea("action tasks.switch")
clear task: user.idea("action tasks.close")
configure servers: user.idea("action tasks.configure.servers")
# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
git pull: user.idea("action Vcs.UpdateProject")
git commit: user.idea("action CheckinProject")
git push: user.idea("action CheckinProject")
git log: user.idea("action Vcs.ShowTabbedFileHistory")
git browse: user.idea("action Github.Open.In.Browser")
git (gets | gist): user.idea("action Github.Create.Gist")
git (pull request | request): user.idea("action Github.Create.Pull.Request")
git (view | show | list) (requests | request): user.idea("action Github.View.Pull.Request")
git (annotate | blame): user.idea("action Annotate")
git menu: user.idea("action Vcs.QuickListPopupAction")
# Tool windows:
# Toggling various tool windows
toggle project: user.idea("action ActivateProjectToolWindow")
toggle find: user.idea("action ActivateFindToolWindow")
toggle run: user.idea("action ActivateRunToolWindow")
toggle debug: user.idea("action ActivateDebugToolWindow")
toggle events: user.idea("action ActivateEventLogToolWindow")
toggle terminal: user.idea("action ActivateTerminalToolWindow")
toggle git: user.idea("action ActivateVersionControlToolWindow")
toggle structure: user.idea("action ActivateStructureToolWindow")
toggle database: user.idea("action ActivateDatabaseToolWindow")
toggle database changes: user.idea("action ActivateDatabaseChangesToolWindow")
toggle make: user.idea("action ActivatemakeToolWindow")
toggle to do: user.idea("action ActivateTODOToolWindow")
toggle docker: user.idea("action ActivateDockerToolWindow")
toggle favorites: user.idea("action ActivateFavoritesToolWindow")
toggle last: user.idea("action JumpToLastWindow")
# Pin/dock/float
toggle pinned: user.idea("action TogglePinnedMode")
toggle docked: user.idea("action ToggleDockMode")
toggle floating: user.idea("action ToggleFloatingMode")
toggle windowed: user.idea("action ToggleWindowedMode")
toggle split: user.idea("action ToggleSideMode")
# Settings, not windows
toggle tool buttons: user.idea("action ViewToolButtons")
toggle toolbar: user.idea("action ViewToolBar")
toggle status [bar]: user.idea("action ViewStatusBar")
toggle navigation [bar]: user.idea("action ViewNavigationBar")
# Active editor settings
toggle power save: user.idea("action TogglePowerSave")
toggle whitespace: user.idea("action EditorToggleShowWhitespaces")
toggle indents: user.idea("action EditorToggleShowIndentLines")
toggle line numbers: user.idea("action EditorToggleShowLineNumbers")
toggle (bread crumbs | breadcrumbs): user.idea("action EditorToggleShowBreadcrumbs")
toggle gutter icons: user.idea("action EditorToggleShowGutterIcons")
toggle wrap: user.idea("action EditorToggleUseSoftWraps")
toggle parameters: user.idea("action ToggleInlineHintsAction")
# Toggleable views
toggle fullscreen: user.idea("action ToggleFullScreen")
toggle distraction [free mode]: user.idea("action ToggleDistractionFreeMode")
toggle presentation [mode]: user.idea("action TogglePresentationMode")
# Toggle additionals
toggle comment: code.toggle_comment()
# Quick popups
change scheme: user.idea("action QuickChangeScheme")
 # Always javadoc
(toggle | pop) (doc | documentation): user.idea("action QuickJavaDoc")
(pop deaf | toggle definition): user.idea("action QuickImplementations")
pop type: user.idea("action ExpressionTypeInfo")
pop parameters: user.idea("action ParameterInfo")
# Breakpoints / debugging
go breakpoints: user.idea("action ViewBreakpoints")
toggle [line] breakpoint: user.idea("action ToggleLineBreakpoint")
toggle method breakpoint: user.idea("action ToggleMethodBreakpoint")
run menu: user.idea("action ChooseRunConfiguration")
run test: user.idea("action RunClass")
run test again: user.idea("action Rerun")
debug test: user.idea("action DebugClass")
step over: user.idea("action StepOver")
step into: user.idea("action StepInto")
step smart: user.idea("action SmartStepInto")
step to line: user.idea("action RunToCursor")
continue: user.idea("action Resume")
# Grow / Shrink
(grow | shrink) window right: user.idea("action ResizeToolWindowRight")
(grow | shrink) window left: user.idea("action ResizeToolWindowLeft")
(grow | shrink) window up: user.idea("action ResizeToolWindowUp")
(grow | shrink) window down: user.idea("action ResizeToolWindowDown")
# Movement
<user.navigation_verbs> next (error | air): user.idea_movement(navigation_verbs, "action GotoNextError")
<user.navigation_verbs> last (error | air): user.idea_movement(navigation_verbs, "action GotoPreviousError")
<user.navigation_verbs> this: user.idea_movement(navigation_verbs, "")
# Special Selects
select less: user.idea("action EditorUnSelectWord")
select (more|this): user.idea("action EditorSelectWord")