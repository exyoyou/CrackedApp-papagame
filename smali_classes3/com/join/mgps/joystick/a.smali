.class public Lcom/join/mgps/joystick/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/joystick/a$d;
    }
.end annotation


# static fields
.field public static j:Lcom/join/mgps/joystick/a;


# instance fields
.field private a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:[I

.field private f:Lcom/join/mgps/joystick/a$d;

.field g:Lcom/papa/controller/core/d;

.field h:F

.field i:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    filled-new-array {v0, v0, v0, v0}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/joystick/a;->e:[I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/joystick/a;->f:Lcom/join/mgps/joystick/a$d;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->n()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private A()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private E(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "add"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const-string p1, "\u624b\u67c4\u5df2\u8fde\u63a5"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string p1, "\u624b\u67c4\u5df2\u65ad\u5f00"

    .line 20
    .line 21
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private G(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/join/mgps/joystick/a;->k(Ljava/util/List;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-lez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object v3, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ge v3, p1, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/join/mgps/joystick/a;->k(Ljava/util/List;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-lez p1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/join/mgps/joystick/a;->k(Ljava/util/List;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-lez p1, :cond_1

    .line 68
    .line 69
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/join/mgps/joystick/a;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/joystick/a;->l(ILjava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b()Lcom/papa/controller/core/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/joystick/a$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/joystick/a$b;-><init>(Lcom/join/mgps/joystick/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static g()Lcom/join/mgps/joystick/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/a;->j:Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/joystick/a;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/joystick/a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/joystick/a;->j:Lcom/join/mgps/joystick/a;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/join/mgps/joystick/a;->j:Lcom/join/mgps/joystick/a;

    .line 13
    .line 14
    return-object v0
.end method

.method private j(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_2

    .line 21
    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v2}, Lcom/join/mgps/joystick/a;->m(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 43
    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    return-object v0
.end method

.method private k(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/joystick/a;->j(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/joystick/a;->j(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private l(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_2

    .line 6
    .line 7
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/join/mgps/joystick/a;->G(Ljava/util/List;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-direct {p0, p1}, Lcom/join/mgps/joystick/a;->E(Z)V

    .line 19
    .line 20
    .line 21
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    .line 22
    .line 23
    if-nez p1, :cond_3

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    .line 31
    .line 32
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->b:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    new-array p1, v0, [Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/join/mgps/joystick/map/d;->l(I[Ljava/lang/Boolean;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-direct {p0, p2}, Lcom/join/mgps/joystick/a;->k(Ljava/util/List;)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-ge p2, v1, :cond_4

    .line 53
    .line 54
    and-int/2addr p1, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    and-int/2addr p1, v1

    .line 57
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/joystick/a;->f:Lcom/join/mgps/joystick/a$d;

    .line 58
    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    invoke-interface {p2, p1}, Lcom/join/mgps/joystick/a$d;->onVirtualKeyboard(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_5
    :goto_2
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->f(Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, [Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    array-length v1, v0

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->keysKey:[Ljava/lang/String;

    .line 43
    .line 44
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/joystick/a;->d:Ljava/util/List;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/mgps/joystick/a;->B()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method private o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private t(Landroid/view/KeyEvent;Lcom/join/mgps/joystick/map/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "mapEvent"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->A()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->o()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/16 v0, 0x14

    .line 13
    .line 14
    const/16 v1, 0x16

    .line 15
    .line 16
    const/16 v2, 0x13

    .line 17
    .line 18
    const/16 v3, 0x15

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz p2, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-ne p2, v3, :cond_1

    .line 28
    .line 29
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_LEFT1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-ne p2, v2, :cond_2

    .line 41
    .line 42
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_UP1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-ne p2, v1, :cond_3

    .line 54
    .line 55
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_RIGHT1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-ne p2, v0, :cond_8

    .line 67
    .line 68
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_DOWN1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-ne p2, v3, :cond_5

    .line 80
    .line 81
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_LEFT:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-ne p2, v2, :cond_6

    .line 93
    .line 94
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_UP:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    goto :goto_0

    .line 101
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-ne p2, v1, :cond_7

    .line 106
    .line 107
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_RIGHT:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    goto :goto_0

    .line 114
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-ne p2, v0, :cond_8

    .line 119
    .line 120
    sget-object p2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_DOWN:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    goto :goto_0

    .line 127
    :cond_8
    const/4 p2, 0x0

    .line 128
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_9

    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->e:[I

    .line 135
    .line 136
    aget v0, p1, v4

    .line 137
    .line 138
    or-int/2addr p2, v0

    .line 139
    aput p2, p1, v4

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->e:[I

    .line 143
    .line 144
    aget v0, p1, v4

    .line 145
    .line 146
    not-int p2, p2

    .line 147
    and-int/2addr p2, v0

    .line 148
    aput p2, p1, v4

    .line 149
    .line 150
    :goto_1
    return-void
.end method

.method private u(Landroid/view/KeyEvent;Lcom/join/mgps/joystick/map/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "keyMapEvent"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/c;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->d:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/c;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/joystick/map/c;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p2, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->e:[I

    .line 46
    .line 47
    aget v0, p1, v1

    .line 48
    .line 49
    or-int/2addr p2, v0

    .line 50
    aput p2, p1, v1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/joystick/a;->e:[I

    .line 54
    .line 55
    aget v0, p1, v1

    .line 56
    .line 57
    not-int p2, p2

    .line 58
    and-int/2addr p2, v0

    .line 59
    aput p2, p1, v1

    .line 60
    .line 61
    :goto_1
    return-void
.end method


# virtual methods
.method B()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/controller/core/d;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/joystick/a;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/papa/controller/core/d;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->b()Lcom/papa/controller/core/c;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/papa/controller/core/d;->w(Lcom/papa/controller/core/c;Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/joystick/a;->x()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->B()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public C()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/joystick/EaseBreathInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/joystick/EaseBreathInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0xff

    .line 8
    .line 9
    filled-new-array {v1, v2}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-wide/16 v2, 0x4b0

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/joystick/a$c;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/joystick/a$c;-><init>(Lcom/join/mgps/joystick/a;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->F()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public F()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/joystick/a;->D()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/d;->n(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    or-int/2addr v1, p1

    .line 11
    :cond_0
    return v1
.end method

.method public d(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/d;->o(Landroid/view/KeyEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    or-int/2addr v1, p1

    .line 11
    :cond_0
    return v1
.end method

.method e(Lcom/papa/controller/core/PadMotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->y()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->A()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v1, p0, Lcom/join/mgps/joystick/a;->h:F

    .line 10
    .line 11
    mul-float v2, v0, v1

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    cmpg-float v2, v2, v5

    .line 17
    .line 18
    if-gez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v1, v3}, Lcom/join/mgps/joystick/a;->h(FI)Landroid/view/KeyEvent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/joystick/a;->h(FI)Landroid/view/KeyEvent;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, v1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    const/4 v1, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    mul-float v2, v0, v1

    .line 37
    .line 38
    cmpl-float v2, v2, v5

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    cmpl-float v2, v0, v5

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    cmpl-float v6, v1, v5

    .line 47
    .line 48
    if-nez v6, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/joystick/a;->h(FI)Landroid/view/KeyEvent;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0, v1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    if-nez v2, :cond_2

    .line 59
    .line 60
    cmpl-float v2, v1, v5

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0, v1, v3}, Lcom/join/mgps/joystick/a;->h(FI)Landroid/view/KeyEvent;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p0, v1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v1, 0x0

    .line 73
    :goto_1
    iget v2, p0, Lcom/join/mgps/joystick/a;->i:F

    .line 74
    .line 75
    mul-float v6, p1, v2

    .line 76
    .line 77
    cmpg-float v6, v6, v5

    .line 78
    .line 79
    if-gez v6, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/joystick/a;->i(FI)Landroid/view/KeyEvent;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p0, v2}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, v4}, Lcom/join/mgps/joystick/a;->i(FI)Landroid/view/KeyEvent;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p0, v2}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 93
    .line 94
    .line 95
    :goto_2
    or-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    mul-float v6, p1, v2

    .line 99
    .line 100
    cmpl-float v6, v6, v5

    .line 101
    .line 102
    if-nez v6, :cond_5

    .line 103
    .line 104
    cmpl-float v6, p1, v5

    .line 105
    .line 106
    if-eqz v6, :cond_4

    .line 107
    .line 108
    cmpl-float v7, v2, v5

    .line 109
    .line 110
    if-nez v7, :cond_4

    .line 111
    .line 112
    invoke-virtual {p0, p1, v4}, Lcom/join/mgps/joystick/a;->i(FI)Landroid/view/KeyEvent;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {p0, v2}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    if-nez v6, :cond_5

    .line 121
    .line 122
    cmpl-float v4, v2, v5

    .line 123
    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/joystick/a;->i(FI)Landroid/view/KeyEvent;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p0, v2}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    :goto_3
    iput v0, p0, Lcom/join/mgps/joystick/a;->h:F

    .line 135
    .line 136
    iput p1, p0, Lcom/join/mgps/joystick/a;->i:F

    .line 137
    .line 138
    return v1
.end method

.method f(Lcom/papa/controller/core/PadMotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->w()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->y()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->A()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/joystick/a;->f:Lcom/join/mgps/joystick/a$d;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v2, v0, v1, p1}, Lcom/join/mgps/joystick/a$d;->onGenericMotionEvent(IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method h(FI)Landroid/view/KeyEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "action"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    const/16 p1, 0x15

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    cmpl-float p1, p1, v0

    .line 10
    .line 11
    if-lez p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0x16

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    .line 18
    .line 19
    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method i(FI)Landroid/view/KeyEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "action"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    const/16 p1, 0x13

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    cmpl-float p1, p1, v0

    .line 10
    .line 11
    if-lez p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0x14

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    .line 18
    .line 19
    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public p(Landroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/joystick/a;->m(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    invoke-static {v1, p1}, Lcom/join/mgps/joystick/map/d;->b(ILandroid/view/KeyEvent;)Lcom/join/mgps/joystick/map/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/joystick/a;->t(Landroid/view/KeyEvent;Lcom/join/mgps/joystick/map/c;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/joystick/a;->u(Landroid/view/KeyEvent;Lcom/join/mgps/joystick/map/c;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/joystick/a;->f:Lcom/join/mgps/joystick/a$d;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/joystick/a;->e:[I

    .line 38
    .line 39
    invoke-interface {v1, v2, v0, p1}, Lcom/join/mgps/joystick/a$d;->onKeyMap([ILcom/join/mgps/joystick/map/c;Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 48
    return p1
.end method

.method q(ILcom/papa/controller/core/PadKeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/papa/controller/core/BaseEvent;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/joystick/a;->m(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/joystick/a;->s(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 18
    .line 19
    .line 20
    return v0
.end method

.method r(Lcom/papa/controller/core/PadMotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/BaseEvent;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/joystick/a;->m(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->y()F

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->A()F

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->w()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v2, 0xc8

    .line 24
    .line 25
    if-ne v0, v2, :cond_2

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->o()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/join/mgps/joystick/a;->f(Lcom/papa/controller/core/PadMotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/joystick/a;->e(Lcom/papa/controller/core/PadMotionEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/papa/controller/core/PadMotionEvent;->w()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v2, 0xc9

    .line 48
    .line 49
    if-ne v0, v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/join/mgps/joystick/a;->f(Lcom/papa/controller/core/PadMotionEvent;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_3
    return v1
.end method

.method s(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->w()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->A()F

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/papa/controller/core/BaseEvent;->b()I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/papa/controller/core/BaseEvent;->d()J

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/view/KeyEvent;

    .line 19
    .line 20
    invoke-direct {p1, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public v()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->p()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v1, v0}, Lcom/join/mgps/joystick/a;->l(ILjava/util/List;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/joystick/a;->B()V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void
.end method

.method public w(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "emuMap"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/joystick/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/joystick/a;->c:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/joystick/a;->n()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/join/mgps/joystick/a$a;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/mgps/joystick/a$a;-><init>(Lcom/join/mgps/joystick/a;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/papa/controller/core/d;->v(Lcom/papa/controller/core/ControllerManager$d;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public y(Lcom/join/mgps/joystick/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/joystick/a;->f:Lcom/join/mgps/joystick/a$d;

    .line 2
    .line 3
    return-void
.end method

.method public z(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intensityL",
            "intensityR"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/a;->g:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/papa/controller/core/d;->y(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
