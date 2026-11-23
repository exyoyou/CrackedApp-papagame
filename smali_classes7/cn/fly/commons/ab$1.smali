.class Lcn/fly/commons/ab$1;
.super Lcn/fly/commons/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/ab;->f()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/ab;


# direct methods
.method constructor <init>(Lcn/fly/commons/ab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/ab$1;->a:Lcn/fly/commons/ab;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/fly/commons/c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/commons/ab$1;->a:Lcn/fly/commons/ab;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/fly/commons/ab;->a(Lcn/fly/commons/ab;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcn/fly/commons/ab;->a(Lcn/fly/commons/ab;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    return-void
.end method
