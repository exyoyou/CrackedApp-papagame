.class final enum Lcom/sigmob/sdk/mraid/k$2;
.super Lcom/sigmob/sdk/mraid/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "javascriptString"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/mraid/k;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/mraid/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/sigmob/sdk/base/models/PlacementType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "placementType"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
