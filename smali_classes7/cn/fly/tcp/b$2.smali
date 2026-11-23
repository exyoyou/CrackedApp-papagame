.class Lcn/fly/tcp/b$2;
.super Lcn/fly/tcp/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tcp/b;


# direct methods
.method constructor <init>(Lcn/fly/tcp/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/b$2;->a:Lcn/fly/tcp/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/fly/tcp/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/b$2;->a:Lcn/fly/tcp/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcn/fly/tcp/b;->b(Lcn/fly/tcp/b;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/b$2;->a:Lcn/fly/tcp/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcn/fly/tcp/b;->b(Lcn/fly/tcp/b;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
