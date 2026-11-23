.class public final Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/client/hook/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$ActivityCallbackRecord;,
        Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$b;
    }
.end annotation


# static fields
.field private static c:Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$ActivityCallbackRecord;

.field private static final d:Ljava/lang/String;

.field private static e:Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$ActivityCallbackRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$ActivityCallbackRecord;-><init>(Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->c:Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$ActivityCallbackRecord;

    .line 8
    .line 9
    const-class v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->d:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d(Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e()Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$ActivityCallbackRecord;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->c:Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$ActivityCallbackRecord;

    .line 2
    .line 3
    return-object v0
.end method

.method private f()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/c;->c()Lcom/xinzhu/overmind/client/hook/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/xinzhu/overmind/client/hook/proxies/app/b;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/client/hook/c;->b(Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/c;->c()Lcom/xinzhu/overmind/client/hook/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-class v1, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/client/hook/c;->b(Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private g(Landroid/app/Instrumentation;)Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$b;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public static h()Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->e:Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->e:Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->e:Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->e:Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->i()Landroid/app/Instrumentation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$b;

    .line 6
    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public i()Landroid/app/Instrumentation;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/g;->X()Landroid/app/Instrumentation;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public injectHook()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->i()Landroid/app/Instrumentation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$b;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "AppInstrumentation.injectHook() "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->g(Landroid/app/Instrumentation;)Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    new-instance v1, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$b;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook$b;-><init>(Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, v1, Lcom/xinzhu/overmind/client/hook/delegate/InstrumentationDelegate;->root:Landroid/app/Instrumentation;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    .line 42
    .line 43
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v0, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/xinzhu/haunted/android/app/g;->o0(Landroid/app/Instrumentation;)Z
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
