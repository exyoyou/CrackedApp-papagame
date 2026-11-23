.class public Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;
    }
.end annotation


# static fields
.field private static final sSpCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->sSpCache:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/SharedPreferences;
    .locals 2

    .line 2
    sget-object p3, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->sSpCache:Ljava/util/HashMap;

    monitor-enter p3

    .line 3
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;-><init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$1;)V

    .line 5
    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    invoke-static {v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object p3

    if-nez p3, :cond_2

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    invoke-static {v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object p3

    if-nez p3, :cond_1

    .line 10
    invoke-static {v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object p3

    if-nez p3, :cond_1

    .line 11
    new-instance p3, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-static {p0, p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getNewSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;-><init>(Ljava/io/File;Z)V

    invoke-static {v0, p3}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$102(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 12
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 13
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    .line 14
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static getNewSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "shared_prefs"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ".sp"

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized handleReplace(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const-class v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    const-string v1, "sp_replace_flag"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {p0, v1, p2, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_8

    .line 20
    .line 21
    invoke-static {p0, p1, p2, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getNewSharedPreferences(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move-object v4, p2

    .line 30
    check-cast v4, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getModifyID()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-gt v4, v2, :cond_7

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v5, "replace "

    .line 50
    .line 51
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, "   "

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v5, "   "

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-lez p2, :cond_7

    .line 86
    .line 87
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_6

    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Ljava/util/Map$Entry;

    .line 106
    .line 107
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    if-eqz v4, :cond_1

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-lez v5, :cond_1

    .line 128
    .line 129
    if-eqz p2, :cond_1

    .line 130
    .line 131
    instance-of v5, p2, Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v5, :cond_2

    .line 134
    .line 135
    check-cast p2, Ljava/lang/String;

    .line 136
    .line 137
    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    instance-of v5, p2, Ljava/lang/Long;

    .line 142
    .line 143
    if-eqz v5, :cond_3

    .line 144
    .line 145
    check-cast p2, Ljava/lang/Long;

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 148
    .line 149
    .line 150
    move-result-wide v5

    .line 151
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_3
    instance-of v5, p2, Ljava/lang/Integer;

    .line 156
    .line 157
    if-eqz v5, :cond_4

    .line 158
    .line 159
    check-cast p2, Ljava/lang/Integer;

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_4
    instance-of v5, p2, Ljava/lang/Float;

    .line 170
    .line 171
    if-eqz v5, :cond_5

    .line 172
    .line 173
    check-cast p2, Ljava/lang/Float;

    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_5
    instance-of v5, p2, Ljava/lang/Boolean;

    .line 184
    .line 185
    if-eqz v5, :cond_1

    .line 186
    .line 187
    check-cast p2, Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_6
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    .line 199
    .line 200
    :cond_7
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .line 210
    .line 211
    :cond_8
    monitor-exit v0

    .line 212
    return-void

    .line 213
    :catchall_0
    move-exception p0

    .line 214
    monitor-exit v0

    .line 215
    throw p0
.end method

.method private static invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    :goto_0
    return-object p0
.end method

.method public static onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->sSpCache:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    check-cast v2, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->onDestroy()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v1
.end method
