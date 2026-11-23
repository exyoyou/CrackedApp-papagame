.class public Lcom/windmill/sdk/strategy/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/strategy/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "channelId"

.field public static final b:Ljava/lang/String; = "tbPlacementId"

.field public static final c:Ljava/lang/String; = "placementId"

.field public static final d:Ljava/lang/String; = "month"

.field public static final e:Ljava/lang/String; = "day"

.field public static final f:Ljava/lang/String; = "hour"

.field public static final g:Ljava/lang/String; = "tameStamp"


# instance fields
.field final synthetic h:Lcom/windmill/sdk/strategy/m;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/strategy/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/m$a;->h:Lcom/windmill/sdk/strategy/m;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
