.class public Lcn/fly/tools/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tools/a/e$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcn/fly/tools/a/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcn/fly/tools/a/e;
    .locals 2

    .line 2
    sget-object v0, Lcn/fly/tools/a/e;->a:Lcn/fly/tools/a/e;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcn/fly/tools/a/e;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcn/fly/tools/a/e;->a:Lcn/fly/tools/a/e;

    if-nez v1, :cond_0

    invoke-static {}, Lcn/fly/tools/xcrash/XCrash;->nrInited()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcn/fly/tools/a/e;

    invoke-direct {v1}, Lcn/fly/tools/a/e;-><init>()V

    sput-object v1, Lcn/fly/tools/a/e;->a:Lcn/fly/tools/a/e;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcn/fly/tools/a/e;->a:Lcn/fly/tools/a/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 8
    invoke-static {p2, p3}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcn/fly/tools/a/e$a$b;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1, p3}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/Class;Ljava/lang/String;)Lcn/fly/tools/a/e$a$b;

    move-result-object p1

    :goto_0
    if-eqz p4, :cond_1

    .line 10
    array-length p2, p4

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 11
    :goto_1
    array-length p3, p4

    if-ge p2, p3, :cond_1

    .line 12
    aget-object p3, p4, p2

    aget-object v0, p5, p2

    invoke-virtual {p1, p3, v0}, Lcn/fly/tools/a/e$a$b;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcn/fly/tools/a/e$a$b;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1, p6}, Lcn/fly/tools/a/e$a$b;->a(Ljava/lang/Class;)Lcn/fly/tools/a/e$a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/fly/tools/a/e$a$b;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    invoke-static {p1}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/Class;)Lcn/fly/tools/a/e$a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/fly/tools/a/e$a$b;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    invoke-static {p1}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 15
    invoke-static {p2, p3}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/Object;Ljava/lang/String;)Lcn/fly/tools/a/e$a$b;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1, p3}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/Class;Ljava/lang/String;)Lcn/fly/tools/a/e$a$b;

    move-result-object p1

    :goto_0
    if-eqz p4, :cond_1

    .line 17
    array-length p2, p4

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 18
    :goto_1
    array-length p3, p4

    if-ge p2, p3, :cond_1

    .line 19
    aget-object p3, p4, p2

    aget-object v0, p5, p2

    invoke-virtual {p1, p3, v0}, Lcn/fly/tools/a/e$a$b;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcn/fly/tools/a/e$a$b;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1, p6}, Lcn/fly/tools/a/e$a$b;->a(Ljava/lang/Class;)Lcn/fly/tools/a/e$a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/fly/tools/a/e$a$b;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23
    invoke-static {p1}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    .line 24
    invoke-static {p1, p2}, Lcn/fly/tools/a/e$a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcn/fly/tools/a/e$a$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcn/fly/tools/a/e$a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    invoke-static {p3, p2}, Lcn/fly/tools/a/e$a;->b(Ljava/lang/Object;Ljava/lang/String;)Lcn/fly/tools/a/e$a$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcn/fly/tools/a/e$a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    invoke-static {p1}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/Class;)Lcn/fly/tools/a/e$a$b;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 28
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 29
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 30
    aget-object v1, p2, v0

    aget-object v2, p3, v0

    invoke-virtual {p1, v1, v2}, Lcn/fly/tools/a/e$a$b;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcn/fly/tools/a/e$a$b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcn/fly/tools/a/e$a$b;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs a([Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/fly/tools/a/e$a;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
