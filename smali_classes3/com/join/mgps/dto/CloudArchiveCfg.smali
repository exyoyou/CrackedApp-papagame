.class public Lcom/join/mgps/dto/CloudArchiveCfg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private last_enter_main_page_time:J

.field private location_at:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getLast_enter_main_page_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CloudArchiveCfg;->last_enter_main_page_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLocation_at()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudArchiveCfg;->location_at:I

    .line 2
    .line 3
    return v0
.end method

.method public setLast_enter_main_page_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "last_enter_main_page_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CloudArchiveCfg;->last_enter_main_page_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setLocation_at(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location_at"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudArchiveCfg;->location_at:I

    .line 2
    .line 3
    return-void
.end method
