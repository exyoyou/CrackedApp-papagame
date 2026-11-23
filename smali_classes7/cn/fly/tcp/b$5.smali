.class Lcn/fly/tcp/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/b;->a(IJLjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcn/fly/tcp/b;


# direct methods
.method constructor <init>(Lcn/fly/tcp/b;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/b$5;->c:Lcn/fly/tcp/b;

    .line 2
    .line 3
    iput p2, p0, Lcn/fly/tcp/b$5;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/tcp/b$5;->b:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/b$5;->c:Lcn/fly/tcp/b;

    .line 2
    .line 3
    iget v1, p0, Lcn/fly/tcp/b$5;->a:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcn/fly/tcp/b;->a(Lcn/fly/tcp/b;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcn/fly/tcp/b$5;->b:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
