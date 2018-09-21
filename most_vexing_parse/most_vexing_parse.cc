class Timer{
public:
	Timer();
};

class TimerKeeper{
public:
	TimerKeeper(const Timer& t);
	
	int get_time();
};

int main(){
	TimerKeeper time_keeper(Timer());
	
	return time_keeper.get_time();
}
