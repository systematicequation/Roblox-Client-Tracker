return  {
	VerticalTile = {
		Base = {
			Container = {
				Background = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				BorderWidth = 1,
				BorderColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.8,
				},
				DropShadow = {
					X = 0,
					Y = 4,
					Blur = 8,
					Color = {
						Color3 = Color3.new(0, 0, 0),
						Transparency = 0.5,
					},
				},
				BorderRadius = {
					LeadingTop = 8,
					TrailingTop = 8,
					TrailingBottom = 8,
					LeadingBottom = 8,
				},
			},
			ContentTop = {
				Spacing = {
					Top = 0,
					Trailing = 0,
					Bottom = 0,
					Leading = 0,
				},
			},
			ContentBottom = {
				Spacing = {
					Top = 8,
					Trailing = 8,
					Bottom = 8,
					Leading = 8,
				},
			},
		},
	},
	PlayerTileSmall = {
		Base = {
			Container = {
				Gap = 8,
				Spacing = {
					Top = 8,
					Trailing = 8,
					Bottom = 8,
					Leading = 8,
				},
			},
			Image = {
				Size = 96,
				BackgroundColor = {
					Color3 = Color3.new(0.22353, 0.23137, 0.23922),
					Transparency = 0,
				},
				BorderColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0.8,
				},
				BorderRadius = 9999,
				BorderWidth = 3,
			},
			Status = {
				Size = 16,
				BackgroundColor = {
					Color3 = Color3.new(0, 0.70588, 0.42745),
					Transparency = 0,
				},
				BorderColor = {
					Color3 = Color3.new(0.13725, 0.1451, 0.15294),
					Transparency = 0,
				},
				BorderWidth = 2.5,
			},
			Content = {
				Gap = 2,
				Typography = {
					Font = Enum.Font.GothamMedium,
					FontSize = 12,
					LineHeight = 1.15,
					LetterSpacing = 0,
				},
				ContentColor = {
					Color3 = Color3.new(1, 1, 1),
					Transparency = 0,
				},
			},
			Icon = {
				Size = 16,
			},
			Presence = {
				ContentColor = {
					Color3 = Color3.new(0.74118, 0.7451, 0.7451),
					Transparency = 0,
				},
			},
		},
	},
	FacePile = {
		Container = {
			Gap = 4,
		},
		FaceGroup = {
			Gap = -6,
		},
		Face = {
			BackgroundColor = {
				Color3 = Color3.new(0.74118, 0.7451, 0.7451),
				Transparency = 0,
			},
			BorderWidth = 2,
			BorderColor = {
				Color3 = Color3.new(0.22353, 0.23137, 0.23922),
				Transparency = 0,
			},
			BorderRadius = 9999,
			Width = 16,
			Height = 16,
		},
		TextLabel = {
			Typography = {
				Font = Enum.Font.Gotham,
				FontSize = 12,
				LineHeight = 1.15,
				LetterSpacing = 0,
			},
			ContentColor = {
				Color3 = Color3.new(1, 1, 1),
				Transparency = 0.3,
			},
		},
	},
	ControllerBar = {
		BackgroundColor = {
			Color3 = Color3.new(0.06667, 0.07059, 0.07843),
			Transparency = 0.2,
		},
		BorderRadius = {
			LeadingTop = 9999,
			TrailingTop = 9999,
			TrailingBottom = 9999,
			LeadingBottom = 9999,
		},
		Spacing = {
			Top = 8,
			Trailing = 12,
			Bottom = 8,
			Leading = 12,
		},
		Gap = 16,
	},
	ControllerBarShortcut = {
		Container = {
			Gap = 4,
			ContentColor = {
				Color3 = Color3.new(1, 1, 1),
				Transparency = 0,
			},
		},
		Icon = {
			Size = 36,
		},
		Label = {
			Typography = {
				Font = Enum.Font.GothamMedium,
				FontSize = 12,
				LineHeight = 1.15,
				LetterSpacing = 0,
			},
		},
	},
}
