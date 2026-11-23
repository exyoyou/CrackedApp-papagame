.class Lcn/fly/tcp/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/b;->a(Lcn/fly/mcl/BusinessCallBack;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/mcl/BusinessCallBack;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcn/fly/tcp/b;


# direct methods
.method constructor <init>(Lcn/fly/tcp/b;Lcn/fly/mcl/BusinessCallBack;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/b$6;->c:Lcn/fly/tcp/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tcp/b$6;->a:Lcn/fly/mcl/BusinessCallBack;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/tcp/b$6;->b:Ljava/lang/Object;

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
    :try_start_0
    iget-object v0, p0, Lcn/fly/tcp/b$6;->a:Lcn/fly/mcl/BusinessCallBack;

    .line 2
    .line 3
    iget-object v1, p0, Lcn/fly/tcp/b$6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcn/fly/mcl/BusinessCallBack;->callback(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lcn/fly/tcp/f/c;->a(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
