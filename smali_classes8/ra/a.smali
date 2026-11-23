.class public Lra/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lra/d;


# static fields
.field private static final b:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;Ljava/io/File;Lcom/xinzhu/overmind/entity/pm/InstallOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p4, p1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/16 p1, 0x8

    .line 9
    .line 10
    invoke-virtual {p4, p1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {p2, p3}, Lcom/xinzhu/overmind/utils/l;->r(Ljava/io/File;Ljava/io/File;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-static {p2, p3}, Lcom/xinzhu/overmind/utils/l;->b(Ljava/io/File;Ljava/io/File;)J

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p2, p3}, Lcom/xinzhu/overmind/utils/l;->b(Ljava/io/File;Ljava/io/File;)J

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->setReadOnly()Z

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method private c(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/xinzhu/overmind/Overmind;->use32BitMainPackage()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    sget-object v2, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v2, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    .line 32
    .line 33
    :goto_0
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->use32BitMainPackage()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    xor-int/2addr p1, v1

    .line 49
    invoke-static {p2, v0, p1}, Lcom/xinzhu/overmind/utils/t;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lra/a;->b:Ljava/lang/String;

    .line 53
    .line 54
    const-string p2, "apk emptyAbi detected, copy native libs."

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->K()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    new-instance v0, Ljava/io/File;

    .line 67
    .line 68
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    sget-object v3, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v3}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-static {p2, v0, v2}, Lcom/xinzhu/overmind/utils/t;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lra/a;->b:Ljava/lang/String;

    .line 90
    .line 91
    const-string v2, "apk 32bit detected, copy native libs."

    .line 92
    .line 93
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->L()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    new-instance v0, Ljava/io/File;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    sget-object v2, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p2, v0, v1}, Lcom/xinzhu/overmind/utils/t;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Lra/a;->b:Ljava/lang/String;

    .line 125
    .line 126
    const-string p2, "apk 64bit detected, copy native libs."

    .line 127
    .line 128
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)I
    .locals 7

    .line 1
    :try_start_0
    iget-object p3, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {p0, p1, v0}, Lra/a;->c(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v0, v1, p2}, Lra/a;->b(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;Ljava/io/File;Lcom/xinzhu/overmind/entity/pm/InstallOption;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p2, v0}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 38
    .line 39
    :cond_0
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    .line 53
    .line 54
    array-length v2, v0

    .line 55
    const/4 v3, 0x0

    .line 56
    :goto_0
    if-ge v3, v2, :cond_2

    .line 57
    .line 58
    aget-object v4, v0, v3

    .line 59
    .line 60
    invoke-static {p3, v4}, Lcom/xinzhu/overmind/a;->P(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_1

    .line 69
    .line 70
    invoke-static {p3, v4}, Lcom/xinzhu/overmind/a;->d0(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    :cond_1
    iget-object v6, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 75
    .line 76
    iget-object v6, v6, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v6, v4}, Lcom/xinzhu/overmind/a;->S(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-direct {p0, p1, v5}, Lra/a;->c(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1, v5, v4, p2}, Lra/a;->b(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Ljava/io/File;Ljava/io/File;Lcom/xinzhu/overmind/entity/pm/InstallOption;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    return v1

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    const/4 p1, -0x1

    .line 97
    return p1
.end method
