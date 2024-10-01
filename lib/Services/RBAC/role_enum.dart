enum UserRole {
  superadmin('superadmin', 5),
  principle('principle', 4),
  teacher('teacher', 3),
  parent('parent', 2),
  student('student', 1);

  const UserRole(this.name, this.level);

  final String name;
  final int level;

  @override
  String toString() => name;

  factory UserRole.fromJson(String? role) {
    switch (role) {
      case "superadmin":
        return UserRole.superadmin;
      case "principle":
        return UserRole.principle;
      case "teacher":
        return UserRole.teacher;
      case "parent":
        return UserRole.parent;
      case "student":
        return UserRole.student;
      default:
        return UserRole.student;
    }
  }
}
