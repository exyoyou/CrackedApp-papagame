.class Lcn/fly/tools/b/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/b/j;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/LocalSocket;

.field final synthetic b:Lcn/fly/tools/b/j;


# direct methods
.method constructor <init>(Lcn/fly/tools/b/j;Landroid/net/LocalSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/b/j$2;->b:Lcn/fly/tools/b/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tools/b/j$2;->a:Landroid/net/LocalSocket;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tools/b/j$2;->b:Lcn/fly/tools/b/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcn/fly/tools/b/j$2;->a:Landroid/net/LocalSocket;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcn/fly/tools/b/j;->a(Lcn/fly/tools/b/j;Landroid/net/LocalSocket;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
