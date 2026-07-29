std_msgs/Header header
string id

# Navigation FSM state. Mirrors navigation::NavigationState in
# legged_deployment/src/state_machine.h.
uint8 STATUS_INITIALIZE=0
uint8 STATUS_HALT=1
uint8 STATUS_RUN=2
uint8 STATUS_TURN_IN_PLACE=3
uint8 STATUS_RECOVERY=4
uint8 status

string text # for debug