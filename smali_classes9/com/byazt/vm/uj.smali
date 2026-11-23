.class public final Lcom/byazt/vm/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa5,
        0xf
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/vm/tt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/vm/tt<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/vm/uj$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/vm/uj$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/vm/uj;->c:Lcom/byazt/vm/tt;

    .line 7
    .line 8
    return-void
.end method

.method public static c(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/vm/uj;->c:Lcom/byazt/vm/tt;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p0, v1, v2

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/vm/tt;->tt([Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    return-object p0
.end method
