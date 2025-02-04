//
//  Created by Alex.M on 06.07.2022.
//

import Foundation
import SwiftUI

public struct MediaPickerTheme {
    public let main: Main
    public let selection: Selection
    public let error: Error

    public init(main: MediaPickerTheme.Main = .init(),
                selection: MediaPickerTheme.Selection = .init(),
                error: MediaPickerTheme.Error = .init()) {
        self.main = main
        self.selection = selection
        self.error = error
    }
}

extension MediaPickerTheme {
    public struct Main {
        public let text: Color
        public let albumSelectionBackground: Color
        public let fullscreenPhotoBackground: Color
        public let cameraBackground: Color
        public let cameraSelectionBackground: Color

        public init(text: Color = Color(uiColor: .label),
                    albumSelectionBackground: Color = Color(uiColor: .systemGroupedBackground),
                    fullscreenPhotoBackground: Color = Color(uiColor: .systemGroupedBackground),
                    cameraBackground: Color = .black,
                    cameraSelectionBackground: Color = .black) {
            self.text = text
            self.albumSelectionBackground = albumSelectionBackground
            self.fullscreenPhotoBackground = fullscreenPhotoBackground
            self.cameraBackground = cameraBackground
            self.cameraSelectionBackground = cameraSelectionBackground
        }
    }

    public struct Selection {
        public let emptyTint: Color
        public let emptyBackground: Color
        public let selectedTint: Color
        public let selectedBackground: Color
        public let fullscreenTint: Color

        public init(emptyTint: Color = .white,
                    emptyBackground: Color = .clear,
                    selectedTint: Color = .blue,
                    selectedBackground: Color = .white,
                    fullscreenTint: Color = .blue) {
            self.emptyTint = emptyTint
            self.emptyBackground = emptyBackground
            self.selectedTint = selectedTint
            self.selectedBackground = selectedBackground
            self.fullscreenTint = fullscreenTint
        }
    }

    public struct Error {
        public let background: Color
        public let tint: Color

        public init(background: Color = .red.opacity(0.7),
                    tint: Color = .white) {
            self.background = background
            self.tint = tint
        }
    }
}
