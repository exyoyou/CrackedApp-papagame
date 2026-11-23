.class public Lcom/byazt/by/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x227,
        0x97
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/by/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field public static c:Lcom/byazt/by/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/by/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/by/n;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/by/n$c;->c:Lcom/byazt/by/n;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c()Lcom/byazt/by/n;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/by/n$c;->c:Lcom/byazt/by/n;

    .line 2
    .line 3
    return-object v0
.end method
