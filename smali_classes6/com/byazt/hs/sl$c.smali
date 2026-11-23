.class public Lcom/byazt/hs/sl$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x57c,
        0x39d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hs/sl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field public static final c:Lcom/byazt/hs/sl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/hs/sl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/hs/sl;-><init>(Lcom/byazt/hs/sl$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/hs/sl$c;->c:Lcom/byazt/hs/sl;

    .line 8
    .line 9
    return-void
.end method
