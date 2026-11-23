.class public Lcom/byazt/vif/ve$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x81b,
        0x18
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/vif/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field public static final c:Lcom/byazt/yy/uj$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final tt:Lcom/byazt/yy/uj$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/vif/ve;->c()Lcom/byazt/yy/uj$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/byazt/vif/ve$c;->c:Lcom/byazt/yy/uj$c;

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/vif/ve;->tt()Lcom/byazt/yy/uj$c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/byazt/vif/ve$c;->tt:Lcom/byazt/yy/uj$c;

    .line 12
    .line 13
    return-void
.end method
