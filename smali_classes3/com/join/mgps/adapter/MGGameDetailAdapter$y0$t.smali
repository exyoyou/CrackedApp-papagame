.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "game_upgrade_info_switch",
            "game_upgrade_info"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$t;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
