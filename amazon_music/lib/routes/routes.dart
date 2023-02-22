import 'package:amazon_music/features/screens/userAuthenticationpage.dart';
import '../features/screens/homepage.dart';
import '../features/screens/preHomepage.dart';
import '../features/screens/splashscreen.dart';
import '../features/screens/trendingPlaylistexpanded.dart';

getRoutes() {
  return {
    "/": (context) => const MySplashScreen(),
    "/first": (context) => const PrePageView(),
    "/second": (context) => const UserAuthenticationPage(),
    "/third": (context) => const MyHomepage(),
    "/fourth": (context) => const TrendingPlaylist(),
    // "/gobacktohomepage": (context) => const TrendingPlaylist(),
  };
}
