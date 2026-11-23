.class public abstract Lcom/facebook/rebound/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a(J)V
.end method

.method b()Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/f$a;->b:Landroid/view/Choreographer$FrameCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/rebound/f$a$a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/facebook/rebound/f$a$a;-><init>(Lcom/facebook/rebound/f$a;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/rebound/f$a;->b:Landroid/view/Choreographer$FrameCallback;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/f$a;->b:Landroid/view/Choreographer$FrameCallback;

    .line 13
    .line 14
    return-object v0
.end method

.method c()Ljava/lang/Runnable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/f$a;->a:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/rebound/f$a$b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/facebook/rebound/f$a$b;-><init>(Lcom/facebook/rebound/f$a;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/rebound/f$a;->a:Ljava/lang/Runnable;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/f$a;->a:Ljava/lang/Runnable;

    .line 13
    .line 14
    return-object v0
.end method
