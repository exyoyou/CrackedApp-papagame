.class Lcom/papa/controller/component/inputmanagercompat/c$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/inputmanagercompat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/papa/controller/component/inputmanagercompat/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/papa/controller/component/inputmanagercompat/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c$b;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/16 v0, 0x65

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/papa/controller/component/inputmanagercompat/c$b;->a:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/papa/controller/component/inputmanagercompat/c;

    .line 18
    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-static {p1}, Lcom/papa/controller/component/inputmanagercompat/c;->e(Lcom/papa/controller/component/inputmanagercompat/c;)Landroid/util/SparseArray;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    const-wide/16 v6, 0xbb8

    .line 36
    .line 37
    if-ge v5, v3, :cond_3

    .line 38
    .line 39
    invoke-static {p1}, Lcom/papa/controller/component/inputmanagercompat/c;->e(Lcom/papa/controller/component/inputmanagercompat/c;)Landroid/util/SparseArray;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, [J

    .line 48
    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    aget-wide v9, v8, v4

    .line 52
    .line 53
    sub-long v9, v1, v9

    .line 54
    .line 55
    cmp-long v11, v9, v6

    .line 56
    .line 57
    if-lez v11, :cond_2

    .line 58
    .line 59
    invoke-static {p1}, Lcom/papa/controller/component/inputmanagercompat/c;->e(Lcom/papa/controller/component/inputmanagercompat/c;)Landroid/util/SparseArray;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-static {v6}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    if-nez v7, :cond_1

    .line 72
    .line 73
    const/4 v7, 0x2

    .line 74
    invoke-static {p1, v7, v6}, Lcom/papa/controller/component/inputmanagercompat/c;->f(Lcom/papa/controller/component/inputmanagercompat/c;II)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lcom/papa/controller/component/inputmanagercompat/c;->e(Lcom/papa/controller/component/inputmanagercompat/c;)Landroid/util/SparseArray;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    aput-wide v1, v8, v4

    .line 86
    .line 87
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p0, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    return-void
.end method
