.class public final Lcom/byazt/aas/yv$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x7ec
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/aas/yv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final c:Lcom/byazt/iy/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "tt_scheme_check_list_cache"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/a;->getKVStore(Ljava/lang/String;)Lcom/byazt/iy/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/byazt/aas/yv$c;->c:Lcom/byazt/iy/n;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c()Lcom/byazt/iy/n;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/aas/yv$c;->c:Lcom/byazt/iy/n;

    .line 2
    .line 3
    return-object v0
.end method
