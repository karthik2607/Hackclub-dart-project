class Instagram {
  // Map to store user information
  // Key: user id ,Value: tuple containing the user's followers and a list of their posts
  Map<int, List<dynamic>> _users = {};

  void post(int userId, int postId) {
    // Check if the user exists by null checkand contain key function which returns true or false 
    if (!_users.containsKey(userId)) {
      _users[userId] = [<int>[], <int>[]];
    }
    // Append the post to the user's list of posts
    _users[userId]![1].add(postId);
  }

  void follow(int userA, int userB) {

    // Check if user A exists
    if (!_users.containsKey(userA)) {
      _users[userA] = [<int>[], <int>[]];
    }
    // Check if user B exists
    if (!_users.containsKey(userB)) {
      _users[userB] = [<int>[], <int>[]];
    }
    // Add user B to user A's list of followers
    _users[userA]![0].add(userB);
  }

  List<int> getFeed(int userId) {
    // Check if the user exists
    if (!_users.containsKey(userId)) {
      return <int>[];
    }
    // Get the user's followers and their posts
    List followers = _users[userId]![0];
    List posts = _users[userId]![1];
    // Initialize the feed with the user's own posts
    List<int> feed = [...posts];
    // Add the posts of the user's followers to the feed
    for (int follower in followers) {
      feed.addAll(_users[follower]![1]);
    }
    // Sort the feed by post id
    feed.sort((a, b) => b - a);
    // Return the 10 most recent posts
    return feed.take(10).toList();
  }
}
void main(){
  var instagram = Instagram();
instagram.post(1, 1);
instagram.post(2, 2);
instagram.post(2, 3);
instagram.follow(1, 2);
print(instagram.getFeed(1));  

}
