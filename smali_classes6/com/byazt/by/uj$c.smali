.class public Lcom/byazt/by/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x227,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/by/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field public static c:Lcom/byazt/by/uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/by/uj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/by/uj;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/by/uj$c;->c:Lcom/byazt/by/uj;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c()Lcom/byazt/by/uj;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/by/uj$c;->c:Lcom/byazt/by/uj;

    .line 2
    .line 3
    return-object v0
.end method
