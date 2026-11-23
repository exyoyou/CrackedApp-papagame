.class public Lcom/baidu/oauth/sdkbqt/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Ljava/lang/String; = "aHR0cHM6Ly9wYXNzcG9ydC5iYWlkdS5jb20="

.field private static final e:Ljava/lang/String; = "aHR0cHM6Ly93YXBwYXNzLmJhaWR1LmNvbQ=="

.field private static final f:Ljava/lang/String; = "aHR0cHM6Ly9vcGVuYXBpLmJhaWR1LmNvbQ=="

.field private static final g:Ljava/lang/String; = "aHR0cHM6Ly9jcTAxLXBhc3Nwb3J0LW1pczAwLmNxMDEuYmFpZHUuY29tOjg1ODM="

.field private static final h:Ljava/lang/String; = "aHR0cHM6Ly9jcTAxLXBhc3Nwb3J0LW1pczAwLmNxMDEuYmFpZHUuY29tOjg1ODM="

.field private static final i:Ljava/lang/String; = "aHR0cHM6Ly9uc2NsaWNrLmJhaWR1LmNvbS92LmdpZg=="

.field private static final j:Ljava/lang/String; = "aHR0cHM6Ly93d3cuYmFpZHUuY29t"

.field private static k:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "aHR0cHM6Ly9wYXNzcG9ydC5iYWlkdS5jb20="

    .line 3
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcom/baidu/oauth/sdkbqt/a/c;->k:I

    const/4 v1, 0x1

    const-string v2, "aHR0cHM6Ly9vcGVuYXBpLmJhaWR1LmNvbQ=="

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    const-string v3, "aHR0cHM6Ly9jcTAxLXBhc3Nwb3J0LW1pczAwLmNxMDEuYmFpZHUuY29tOjg1ODM="

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .locals 0

    .line 4
    sput p0, Lcom/baidu/oauth/sdkbqt/a/c;->k:I

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "aHR0cHM6Ly93YXBwYXNzLmJhaWR1LmNvbQ=="

    .line 1
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/baidu/oauth/sdkbqt/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "aHR0cHM6Ly9uc2NsaWNrLmJhaWR1LmNvbS92LmdpZg=="

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "aHR0cHM6Ly9wYXNzcG9ydC5iYWlkdS5jb20="

    .line 8
    .line 9
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "https://"

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const-string v1, "aHR0cHM6Ly93YXBwYXNzLmJhaWR1LmNvbQ=="

    .line 25
    .line 26
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    const-string v1, "aHR0cHM6Ly9uc2NsaWNrLmJhaWR1LmNvbS92LmdpZg=="

    .line 38
    .line 39
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "aHR0cHM6Ly9wYXNzcG9ydC5iYWlkdS5jb20="

    .line 8
    .line 9
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "https://"

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const-string v1, "aHR0cHM6Ly93YXBwYXNzLmJhaWR1LmNvbQ=="

    .line 25
    .line 26
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "YmFpZHUuY29t"

    .line 8
    .line 9
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v1, "aGFvMTIzLmNvbQ=="

    .line 17
    .line 18
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const-string v1, "bnVvbWkuY29t"

    .line 26
    .line 27
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const-string v1, "YmFpZnViYW8uY29t"

    .line 35
    .line 36
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "aHR0cHM6Ly93d3cuYmFpZHUuY29t"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
