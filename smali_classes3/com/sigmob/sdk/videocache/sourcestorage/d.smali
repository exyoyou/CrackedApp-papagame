.class public Lcom/sigmob/sdk/videocache/sourcestorage/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/videocache/sourcestorage/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/videocache/sourcestorage/b;

    invoke-direct {v0}, Lcom/sigmob/sdk/videocache/sourcestorage/b;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/sigmob/sdk/videocache/sourcestorage/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sigmob/sdk/videocache/sourcestorage/a;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videocache/sourcestorage/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
