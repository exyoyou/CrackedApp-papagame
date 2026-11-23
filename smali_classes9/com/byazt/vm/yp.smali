.class public final Lcom/byazt/vm/yp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vm/nu;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa5,
        0xd7
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/vm/tt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/vm/tt<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/vm/yp$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/vm/yp$1;-><init>(Lcom/byazt/vm/yp;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/vm/yp;->c:Lcom/byazt/vm/tt;

    .line 10
    .line 11
    return-void
.end method

.method private c(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 13
    .line 14
    .line 15
    const-string v1, "value"

    .line 16
    .line 17
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ltz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_2
    return-object v0
.end method


# virtual methods
.method public tt(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/byazt/vm/yp;->c:Lcom/byazt/vm/tt;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    aput-object p1, v2, v0

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/byazt/vm/tt;->tt([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public ve(Landroid/content/Context;)Lcom/byazt/vm/nu$c;
    .locals 7

    .line 1
    const-string v0, "content://com.meizu.flyme.openidsdk/"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 p1, 0x1

    .line 14
    const/4 v0, 0x0

    .line 15
    :try_start_0
    new-array v5, p1, [Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "oaid"

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    aput-object p1, v5, v6

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    invoke-static {p1}, Lcom/byazt/yv/u;->c(Landroid/database/Cursor;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    :try_start_1
    new-instance v1, Lcom/byazt/vm/nu$c;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/byazt/vm/nu$c;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/byazt/vm/yp;->c(Landroid/database/Cursor;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, v1, Lcom/byazt/vm/nu$c;->tt:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    invoke-static {p1}, Lcom/byazt/yv/u;->c(Landroid/database/Cursor;)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    move-object p1, v0

    .line 52
    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/byazt/yv/da;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/byazt/yv/u;->c(Landroid/database/Cursor;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :catchall_2
    move-exception v0

    .line 60
    invoke-static {p1}, Lcom/byazt/yv/u;->c(Landroid/database/Cursor;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method
