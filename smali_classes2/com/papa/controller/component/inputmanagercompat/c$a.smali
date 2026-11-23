.class Lcom/papa/controller/component/inputmanagercompat/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/inputmanagercompat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/papa/controller/component/inputmanagercompat/c$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/papa/controller/component/inputmanagercompat/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->e:Ljava/util/Queue;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static a(IILcom/papa/controller/component/inputmanagercompat/a$b;)Lcom/papa/controller/component/inputmanagercompat/c$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->e:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/papa/controller/component/inputmanagercompat/c$a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/papa/controller/component/inputmanagercompat/c$a;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/papa/controller/component/inputmanagercompat/c$a;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput p0, v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->b:I

    .line 17
    .line 18
    iput p1, v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->c:I

    .line 19
    .line 20
    iput-object p2, v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->d:Lcom/papa/controller/component/inputmanagercompat/a$b;

    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->d:Lcom/papa/controller/component/inputmanagercompat/a$b;

    .line 13
    .line 14
    iget v1, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->c:I

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/papa/controller/component/inputmanagercompat/a$b;->onInputDeviceRemoved(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->d:Lcom/papa/controller/component/inputmanagercompat/a$b;

    .line 21
    .line 22
    iget v1, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->c:I

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/papa/controller/component/inputmanagercompat/a$b;->onInputDeviceChanged(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->d:Lcom/papa/controller/component/inputmanagercompat/a$b;

    .line 29
    .line 30
    iget v1, p0, Lcom/papa/controller/component/inputmanagercompat/c$a;->c:I

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/papa/controller/component/inputmanagercompat/a$b;->onInputDeviceAdded(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v0, Lcom/papa/controller/component/inputmanagercompat/c$a;->e:Ljava/util/Queue;

    .line 36
    .line 37
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
