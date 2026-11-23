.class Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ptr/PtrClassicDefaultHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;


# direct methods
.method private constructor <init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->c:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;Lcom/join/mgps/ptr/PtrClassicDefaultHeader$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;-><init>(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->c:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->f(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->run()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->c:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->c:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/ptr/PtrClassicDefaultHeader;->g(Lcom/join/mgps/ptr/PtrClassicDefaultHeader;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->b:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/ptr/PtrClassicDefaultHeader$b;->c:Lcom/join/mgps/ptr/PtrClassicDefaultHeader;

    .line 11
    .line 12
    const-wide/16 v1, 0x3e8

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
