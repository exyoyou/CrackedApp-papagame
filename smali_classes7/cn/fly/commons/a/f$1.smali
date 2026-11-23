.class Lcn/fly/commons/a/f$1;
.super Lcn/fly/tools/utils/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/a/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/fly/tools/utils/d<",
        "Ljava/util/ArrayList<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/commons/a/f;


# direct methods
.method constructor <init>(Lcn/fly/commons/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/commons/a/f$1;->a:Lcn/fly/commons/a/f;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/fly/tools/utils/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcn/fly/commons/a/f$1;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcn/fly/commons/ae;->b()Lcn/fly/commons/ae;

    move-result-object v0

    const-string v1, "key_lgwst"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcn/fly/commons/ae;->a(Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcn/fly/commons/a/f$1;->a:Lcn/fly/commons/a/f;

    invoke-static {v0, p1}, Lcn/fly/commons/a/f;->a(Lcn/fly/commons/a/f;Ljava/util/ArrayList;)V

    return-void
.end method
