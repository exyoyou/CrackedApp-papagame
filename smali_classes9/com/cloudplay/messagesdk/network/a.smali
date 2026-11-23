.class public Lcom/cloudplay/messagesdk/network/a;
.super Lcom/cloudplay/messagesdk/network/volley/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    const/16 v2, 0x2710

    .line 5
    .line 6
    invoke-direct {p0, v2, v0, v1}, Lcom/cloudplay/messagesdk/network/volley/b;-><init>(IIF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
