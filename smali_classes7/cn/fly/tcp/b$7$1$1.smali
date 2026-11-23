.class Lcn/fly/tcp/b$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/b$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tcp/b$7$1;


# direct methods
.method constructor <init>(Lcn/fly/tcp/b$7$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/b$7$1$1;->a:Lcn/fly/tcp/b$7$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onResponse(Lcn/fly/tools/utils/DH$DHResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/b$7$1$1;->a:Lcn/fly/tcp/b$7$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcn/fly/tcp/b$7$1;->c:Lcn/fly/tcp/b$7;

    .line 4
    .line 5
    iget-object v0, v0, Lcn/fly/tcp/b$7;->a:Lcn/fly/tcp/b;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lcn/fly/tools/utils/DH$DHResponse;->checkNetworkAvailableForce([I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {v0, p1}, Lcn/fly/tcp/b;->c(Lcn/fly/tcp/b;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
