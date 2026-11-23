.class public Lcom/papa/controller/component/inputmanagercompat/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/component/inputmanagercompat/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/component/inputmanagercompat/c$b;,
        Lcom/papa/controller/component/inputmanagercompat/c$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "InputManagerV9"

.field private static final e:I = 0x65

.field private static final f:J = 0xbb8L

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/papa/controller/component/inputmanagercompat/a$b;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Lcom/papa/controller/component/inputmanagercompat/c$b;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/papa/controller/component/inputmanagercompat/c$b;-><init>(Lcom/papa/controller/component/inputmanagercompat/c;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->c:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa/controller/component/inputmanagercompat/c;->d()[I

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method static synthetic e(Lcom/papa/controller/component/inputmanagercompat/c;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/papa/controller/component/inputmanagercompat/c;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/controller/component/inputmanagercompat/c;->g(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/papa/controller/component/inputmanagercompat/a$b;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/os/Handler;

    .line 38
    .line 39
    invoke-static {p1, p2, v1}, Lcom/papa/controller/component/inputmanagercompat/c$a;->a(IILcom/papa/controller/component/inputmanagercompat/a$b;)Lcom/papa/controller/component/inputmanagercompat/c$a;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/papa/controller/component/inputmanagercompat/a$b;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/papa/controller/component/inputmanagercompat/c;->c:Landroid/os/Handler;

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public b(I)Landroid/view/InputDevice;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Lcom/papa/controller/component/inputmanagercompat/a$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()[I
    .locals 9

    .line 1
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    array-length v3, v0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    :goto_0
    if-ge v5, v3, :cond_1

    .line 13
    .line 14
    aget v6, v0, v5

    .line 15
    .line 16
    iget-object v7, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    check-cast v7, [J

    .line 23
    .line 24
    if-nez v7, :cond_0

    .line 25
    .line 26
    iget-object v7, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    new-array v8, v8, [J

    .line 30
    .line 31
    aput-wide v1, v8, v4

    .line 32
    .line 33
    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [J

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, v1, p1}, Lcom/papa/controller/component/inputmanagercompat/c;->g(II)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [J

    .line 21
    .line 22
    iget-object v2, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    aput-wide v2, v0, v1

    .line 32
    .line 33
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0x65

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0x65

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
