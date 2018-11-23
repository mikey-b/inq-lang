import inqobject;
import httpobject;

void main()
{
	auto root = createRoot!HTTPObject;
	root.start();
}
