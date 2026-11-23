.class public Lcom/byazt/qpp/c$tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1cc,
        0xaf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/qpp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tt"
.end annotation


# static fields
.field public static c:Lcom/byazt/qpp/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/qpp/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/qpp/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/qpp/c$tt;->c:Lcom/byazt/qpp/c;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c()Lcom/byazt/qpp/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qpp/c$tt;->c:Lcom/byazt/qpp/c;

    .line 2
    .line 3
    return-object v0
.end method
