.class Lcom/beizi/fusion/tool/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/tool/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/beizi/fusion/tool/j;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x18704

    .line 3
    iput v0, p0, Lcom/beizi/fusion/tool/z$a;->b:I

    .line 4
    new-instance v0, Lcom/beizi/fusion/tool/z$a$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/beizi/fusion/tool/z$a$1;-><init>(Lcom/beizi/fusion/tool/z$a;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/tool/z$a;->a:Lcom/beizi/fusion/tool/j;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/tool/z$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/tool/z$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/tool/z$a;->b:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/tool/z$a;->a:Lcom/beizi/fusion/tool/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Lcom/beizi/fusion/tool/z$a;->b:I

    .line 11
    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/beizi/fusion/tool/z$a;->a:Lcom/beizi/fusion/tool/j;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
