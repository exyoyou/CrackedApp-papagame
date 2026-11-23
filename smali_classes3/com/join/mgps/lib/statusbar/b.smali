.class Lcom/join/mgps/lib/statusbar/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/lib/statusbar/b$c;,
        Lcom/join/mgps/lib/statusbar/b$d;,
        Lcom/join/mgps/lib/statusbar/b$e;,
        Lcom/join/mgps/lib/statusbar/b$f;
    }
.end annotation


# static fields
.field private static final a:Lcom/join/mgps/lib/statusbar/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/lib/statusbar/b$d;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/lib/statusbar/b$a;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/join/mgps/lib/statusbar/b$a;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/join/mgps/lib/statusbar/b;->a:Lcom/join/mgps/lib/statusbar/b$c;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/join/mgps/lib/statusbar/b$d;

    .line 23
    .line 24
    invoke-direct {v0, v2}, Lcom/join/mgps/lib/statusbar/b$d;-><init>(Lcom/join/mgps/lib/statusbar/b$a;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/join/mgps/lib/statusbar/b;->a:Lcom/join/mgps/lib/statusbar/b$c;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    if-lt v0, v1, :cond_2

    .line 33
    .line 34
    new-instance v0, Lcom/join/mgps/lib/statusbar/b$e;

    .line 35
    .line 36
    invoke-direct {v0, v2}, Lcom/join/mgps/lib/statusbar/b$e;-><init>(Lcom/join/mgps/lib/statusbar/b$a;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/join/mgps/lib/statusbar/b;->a:Lcom/join/mgps/lib/statusbar/b$c;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Lcom/join/mgps/lib/statusbar/b$f;->b()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    new-instance v0, Lcom/join/mgps/lib/statusbar/b$f;

    .line 49
    .line 50
    invoke-direct {v0, v2}, Lcom/join/mgps/lib/statusbar/b$f;-><init>(Lcom/join/mgps/lib/statusbar/b$a;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/join/mgps/lib/statusbar/b;->a:Lcom/join/mgps/lib/statusbar/b$c;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Lcom/join/mgps/lib/statusbar/b$b;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/join/mgps/lib/statusbar/b$b;-><init>()V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/join/mgps/lib/statusbar/b;->a:Lcom/join/mgps/lib/statusbar/b$c;

    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static a(Landroid/view/Window;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "lightStatusBar"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/lib/statusbar/b;->a:Lcom/join/mgps/lib/statusbar/b$c;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lcom/join/mgps/lib/statusbar/b$c;->a(Landroid/view/Window;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
