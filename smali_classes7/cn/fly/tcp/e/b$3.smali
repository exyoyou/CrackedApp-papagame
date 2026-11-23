.class Lcn/fly/tcp/e/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tcp/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tcp/e/b;->c()Lcn/fly/tcp/c/b$a;
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
    iput-object p1, p0, Lcn/fly/tcp/e/b$3;->a:Lcn/fly/tcp/e/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/e/b$3;->a:Lcn/fly/tcp/e/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/tcp/e/b;->a(Lcn/fly/tcp/e/b;)Lcn/fly/tcp/e/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcn/fly/tcp/e/a;->d()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
