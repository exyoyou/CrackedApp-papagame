.class public Lcn/fly/commons/cc/aa$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/commons/cc/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcn/fly/commons/cc/aa$d;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcn/fly/commons/cc/aa$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/fly/commons/cc/aa$d;-><init>(Ljava/lang/Object;Lcn/fly/commons/cc/aa$1;)V

    iput-object v0, p0, Lcn/fly/commons/cc/aa$c;->a:Lcn/fly/commons/cc/aa$d;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcn/fly/commons/cc/aa$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/commons/cc/aa$c;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcn/fly/commons/cc/aa$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/commons/cc/aa$c;->a:Lcn/fly/commons/cc/aa$d;

    invoke-static {v0, p1}, Lcn/fly/commons/cc/aa$d;->a(Lcn/fly/commons/cc/aa$d;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/fly/commons/cc/aa$d;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcn/fly/commons/cc/aa$c;->a:Lcn/fly/commons/cc/aa$d;

    invoke-virtual {v0, p1, p2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Class;)Lcn/fly/commons/cc/aa$d;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/fly/commons/cc/aa$c;->a:Lcn/fly/commons/cc/aa$d;

    invoke-virtual {v0, p1, p2}, Lcn/fly/commons/cc/aa$d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcn/fly/commons/cc/aa$d;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcn/fly/commons/cc/aa$c;->a:Lcn/fly/commons/cc/aa$d;

    invoke-virtual {v0}, Lcn/fly/commons/cc/aa$d;->a()V

    return-void
.end method
