.class public Lcn/fly/tcp/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcn/fly/tcp/b/a;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLcn/fly/tcp/b/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcn/fly/tcp/b/a;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcn/fly/tcp/b/c;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcn/fly/tcp/b/c;->b:Lcn/fly/tcp/b/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcn/fly/tcp/b/c;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/fly/tcp/b/a;",
            ")",
            "Lcn/fly/tcp/b/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/fly/tcp/b/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcn/fly/tcp/b/c;-><init>(ZLcn/fly/tcp/b/a;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcn/fly/tcp/b/a;Ljava/lang/Object;)Lcn/fly/tcp/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/fly/tcp/b/a;",
            "TT;)",
            "Lcn/fly/tcp/b/c<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcn/fly/tcp/b/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcn/fly/tcp/b/c;-><init>(ZLcn/fly/tcp/b/a;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/fly/tcp/b/a;",
            ")",
            "Lcn/fly/tcp/b/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/fly/tcp/b/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcn/fly/tcp/b/c;-><init>(ZLcn/fly/tcp/b/a;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcn/fly/tcp/b/c;->a:Z

    return v0
.end method

.method public b()Lcn/fly/tcp/b/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/tcp/b/c;->b:Lcn/fly/tcp/b/a;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/b/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
