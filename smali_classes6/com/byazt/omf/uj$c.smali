.class public Lcom/byazt/omf/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/omf/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field public static final c:Lcom/byazt/omf/uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/omf/uj;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/omf/uj;-><init>(Lcom/byazt/omf/uj$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/omf/uj$c;->c:Lcom/byazt/omf/uj;

    .line 8
    .line 9
    return-void
.end method
