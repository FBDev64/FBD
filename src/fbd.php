//Funny Bones Department

#Init Segment
namespace App\Providers;
 
use Native\Laravel\Facades\Window;
 
class NativeAppServiceProvider
{
    public function boot(): void
    {
        Window::open(home)
            ->width(75)
            ->height(43);
    }
}