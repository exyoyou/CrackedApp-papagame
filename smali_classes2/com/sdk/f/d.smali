.class public Lcom/sdk/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/f/d$b;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdk/f/d;->a:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sdk/f/d;->b:Z

    sput-boolean v0, Lcom/sdk/f/d;->c:Z

    return-void
.end method
