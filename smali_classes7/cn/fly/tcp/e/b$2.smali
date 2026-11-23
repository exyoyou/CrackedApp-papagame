.class Lcn/fly/tcp/e/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tcp/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/e/b;->b()Lcn/fly/tcp/c/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tcp/e/b;


# direct methods
.method constructor <init>(Lcn/fly/tcp/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tcp/e/b$2;->a:Lcn/fly/tcp/e/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/b$2;->a:Lcn/fly/tcp/e/b;

    invoke-static {v0}, Lcn/fly/tcp/e/b;->a(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcn/fly/tcp/e/b$2;->a:Lcn/fly/tcp/e/b;

    invoke-static {v0}, Lcn/fly/tcp/e/b;->a(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/fly/tcp/e/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
