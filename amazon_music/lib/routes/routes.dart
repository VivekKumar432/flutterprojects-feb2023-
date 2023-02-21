import 'package:amazon_music/features/screens/userAuthenticationpage.dart';
import '../features/screens/preHomepage.dart';
import '../features/screens/splashscreen.dart';
import '../features/screens/trendingPlaylistexpanded.dart';

getRoutes() {
  return {
    "/": (context) => const MySplashScreen(),
    "/second": (context) => const PrePageView(),
    "/third": (context) => const UserAuthenticationPage(),
    "/fourth": (context) => const TrendingPlaylist(),
  };
}
